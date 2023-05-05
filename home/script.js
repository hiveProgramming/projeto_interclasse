function showFutsal(){
    document.getElementById("title-page-table").textContent = "Futsal - Tabela";
    document.getElementById("img-table").src = "../assets/chaveamentos/chaveamento_futsal.png";
}
function showBasquete(){
    document.getElementById("title-page-table").textContent = "Basquete - Tabela";
    document.getElementById("img-table").src = "../assets/chaveamentos/chaveamento_basquete.png";
}
function showVolei(){
    document.getElementById("title-page-table").textContent = "Vôlei - Tabela";
    document.getElementById("img-table").src = "../assets/chaveamentos/chaveamento_volei.png";
}
function showTenisdemesa(){
    document.getElementById("title-page-table").textContent = "Tênis de Mesa - Tabela";
    document.getElementById("img-table").src = "../assets/chaveamentos/chaveamento_tenisdemesa.png";
}
function showCsgo(){
    document.getElementById("title-page-table").textContent = "CS:GO - Tabela";
    document.getElementById("img-table").src = "../assets/chaveamentos/chaveamento_csgo.png";
}
function showValorant(){
    document.getElementById("title-page-table").textContent = "Valorant - Tabela";
    document.getElementById("img-table").src = "../assets/chaveamentos/chaveamento_valorant.png";
}
function showLol(){
    document.getElementById("title-page-table").textContent = "League Of Legends - Tabela";
    document.getElementById("img-table").src = "../assets/chaveamentos/chaveamento_lol.png";
}
function showFifa(){
    document.getElementById("title-page-table").textContent = "FIFA - Tabela";
    document.getElementById("img-table").src = "../assets/chaveamentos/chaveamento_fifa.png";
}

function showInfoFutsal(){
    if(document.getElementById("showFutsal").textContent == "Ver mais"){
            document.getElementById("verFutsal").style.display = "none";
            document.getElementById("infoFutsal").style.display = "flex";
            document.getElementById("showFutsal").textContent = "Ver menos";
    } else {
            document.getElementById("verFutsal").style.display = "block";
            document.getElementById("infoFutsal").style.display = "none";
            document.getElementById("showFutsal").textContent = "Ver mais";
    }
}
function showInfoBasquete(){
    if(document.getElementById("showBasquete").textContent == "Ver mais"){
            document.getElementById("verBasquete").style.display = "none";
            document.getElementById("infoBasquete").style.display = "flex";
            document.getElementById("showBasquete").textContent = "Ver menos";
    } else {
            document.getElementById("verBasquete").style.display = "block";
            document.getElementById("infoBasquete").style.display = "none";
            document.getElementById("showBasquete").textContent = "Ver mais";
    }
}
function showInfoVolei(){
    if(document.getElementById("showVolei").textContent == "Ver mais"){
            document.getElementById("verVolei").style.display = "none";
            document.getElementById("infoVolei").style.display = "flex";
            document.getElementById("showVolei").textContent = "Ver menos";
    } else {
            document.getElementById("verVolei").style.display = "block";
            document.getElementById("infoVolei").style.display = "none";
            document.getElementById("showVolei").textContent = "Ver mais";
    }
}
function showInfoTenisdemesa(){
    if(document.getElementById("showTenisdemesa").textContent == "Ver mais"){
            document.getElementById("verTenisdemesa").style.display = "none";
            document.getElementById("infoTenisdemesa").style.display = "flex";
            document.getElementById("showTenisdemesa").textContent = "Ver menos";
    } else {
            document.getElementById("verTenisdemesa").style.display = "block";
            document.getElementById("infoTenisdemesa").style.display = "none";
            document.getElementById("showTenisdemesa").textContent = "Ver mais";
    }
}
function showInfoLol(){
    if(document.getElementById("showLol").textContent == "Ver mais"){
            document.getElementById("verLol").style.display = "none";
            document.getElementById("infoLol").style.display = "flex";
            document.getElementById("showLol").textContent = "Ver menos";
    } else {
            document.getElementById("verLol").style.display = "block";
            document.getElementById("infoLol").style.display = "none";
            document.getElementById("showLol").textContent = "Ver mais";
    }
}
function showInfoValorant(){
    if(document.getElementById("showValorant").textContent == "Ver mais"){
            document.getElementById("verValorant").style.display = "none";
            document.getElementById("infoValorant").style.display = "flex";
            document.getElementById("showValorant").textContent = "Ver menos";
    } else {
            document.getElementById("verValorant").style.display = "block";
            document.getElementById("infoValorant").style.display = "none";
            document.getElementById("showValorant").textContent = "Ver mais";
    }
}
function showInfoCsgo(){
    if(document.getElementById("showCsgo").textContent == "Ver mais"){
            document.getElementById("verCsgo").style.display = "none";
            document.getElementById("infoCsgo").style.display = "flex";
            document.getElementById("showCsgo").textContent = "Ver menos";
    } else {
            document.getElementById("verCsgo").style.display = "block";
            document.getElementById("infoCsgo").style.display = "none";
            document.getElementById("showCsgo").textContent = "Ver mais";
    }
}
function showInfoFifa(){
    if(document.getElementById("showFifa").textContent == "Ver mais"){
            document.getElementById("verFifa").style.display = "none";
            document.getElementById("infoFifa").style.display = "flex";
            document.getElementById("showFifa").textContent = "Ver menos";
    } else {
            document.getElementById("verFifa").style.display = "block";
            document.getElementById("infoFifa").style.display = "none";
            document.getElementById("showFifa").textContent = "Ver mais";
    }
}

//Responsividade do menu

function showMenu(){
        document.querySelector(".section-header").style.borderBottom = "1px solid var(--principal-color)";
        document.querySelector(".menu-mobile-items").style.display = "flex";
        document.getElementById("menu-mobile-capture").innerHTML = '<button onclick="hiddenMenu()"><img src="../assets/close.png" alt="X para sair" width="45px"></button> ';
}
function hiddenMenu(){
    document.querySelector(".section-header").style.borderBottom = "0px solid var(--principal-color)";
    document.querySelector(".menu-mobile-items").style.display = "none";
    document.getElementById("menu-mobile-capture").innerHTML = '<button onclick="showMenu()"><img src="../assets/menu.png" alt="Três barras" width="45px"></button> ';
}

