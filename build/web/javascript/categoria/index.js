$(function () {
    function popularTabela() {
        $.ajax({
            url: "/WebApplication1/categoria/todas",
            method: "get",
            success: function (data) {
                var resultado = data;
                $("#tabela-categorias").empty();
                for (var i = 0; i < resultado.length; i++) {
                    adicionarLinha(resultado[i].id, resultado[i].nome);
                }
            }
        });
    }

    popularTabela();

    $("#atualizar").on('click', function () {
        popularTabela();
    });

    $("#categoria-modal-cadastrar").on("click", function () {
        var nome = $("#categoria-modal-nome").val();
        $.ajax({
            url: "/WebApplication1/categoria/store",
            method: "POST",
            data: {
                // nome: $("#categoria-modal-nome").val()
                nome: nome
            },
            success: function (resultado) {
                $("#categoria-modal-nome").val("");
                console.log(resultado.id);
                adicionarLinha(resultado.id, nome);
                $("#categoria-modal").modal("hide");
            }, error: function(data){
                console.log(data);
            }
        });
    });

    function adicionarLinha(id, nome) {
        $registro = "<tr>" +
                "<td>" + id + "</td>" +
                "<td>" + nome + "</td>" +
                "</tr>";
        $("#tabela-categorias").append($registro);
    }

});