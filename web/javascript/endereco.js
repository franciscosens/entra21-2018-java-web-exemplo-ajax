$(function () {
    $("#botao-cadastro").on("click", function () {
        processarCep();
    });

    $("#cep").on("focusout", function () {
        processarCep();
    });
    function processarCep() {
        $cep = $("#cep").val();
        $.ajax({
            url: "https://viacep.com.br/ws/" + $cep + "/json/",
            method: "get",
            success: function (data) {
                $("#logradouro").val(data.logradouro);
                $("#cidade").val(data.localidade);
                $("#bairro").val(data.bairro);
                $("#estado").val(data.uf);
                $("#numero").focus();
            }
        });
    }
});