function showCad(){
    document.getElementById("form-cad").style.display = "flex";
    document.getElementById("form-log").style.display = "none";
    document.getElementById("btn-log").style.display = "block";
    document.getElementById("btn-cad").style.display = "none";
    document.getElementById("textLegend").textContent = "Cadastro";
}
function showLog(){
    document.getElementById("form-cad").style.display = "none";
    document.getElementById("form-log").style.display = "flex";
    document.getElementById("btn-log").style.display = "none";
    document.getElementById("btn-cad").style.display = "block";
    document.getElementById("textLegend").textContent = "Login";
}