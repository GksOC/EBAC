// Selecione todos os estudantes, ordenando pelo nome em ordem alfabética.
db.Estudantes.find().sort({ nome: 1 });

// Selecione todos os estudantes do curso de QA.
db.Estudantes.find({ curso: "QA" });

// Selecione todos os estudantes com nota maior ou igual a 7.
db.Estudantes.find({ nota: { $gte: 7 } });

// Selecione todos os estudantes que possuem a palavra “Pedro” no nome.
db.Estudantes.find({ nome: /Pedro/ });

// Selecione todos os estudantes que fazem mais de um curso.
db.Estudantes.find({ curso: { $type: "array" } }); // se possui mais de um curso, o campo curso será do tipo array
db.Estudantes.find({ "curso.1": { $exists: true } }); // verifica se a segunda posição do array existe

// Selecione todos os professores com cargo igual a Professor.
db.Professores.updateMany({}, { $set: { cargo: "Professor" } });
db.Professores.updateOne({ nome: { $regex: "^Bruno" } }, { $set: { cargo: "Diretor" } });
db.Professores.updateOne({ nome: { $regex: "^Marcos" } }, { $set: { cargo: "Coordenador" } });
/*RESPOSTA*/ db.Professores.find({ cargo: "Professor" });

// Selecione todos os professores que lecionam o curso de QA.
db.Professores.find({ curso: "QA" });

// Selecione todos os professores que lecionam mais de um curso.
db.Professores.find({ curso: { $type: "array" } });
db.Professores.find({ "curso.1": { $exists: true } });

// Liste apenas o nome e a nota dos estudantes do curso de SQL.
db.Estudantes.find({ curso: "SQL" }, { _id: 0, nome: 1, nota: 1 });

// Conte quantos estudantes existem por curso.
db.alunos.aggregate([{
        $unwind: "$curso"
    },
    {
        $group: {
            curso: "$curso",
            totalAlunos: { $sum: 1 }
        }
    }
]);