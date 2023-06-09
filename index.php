<?php
    include("functions.php");

    if(isset($_POST['rm-cad'])){
        cadastrar_usuario($_POST['rm-cad'], $_POST['pass-cad'], $_POST['name-cad']);
    }
    if(isset($_POST['rm-login'])){
        login_usuario($_POST['rm-login'], md5($_POST['pass-log']));
    }
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HIVE - Login</title>

    <!-- Parte destinada a importação de fontes, links etc. -->
    <link rel="stylesheet" href="style.css">
    <link rel="shortcut icon" href="assets/favicon-16x16.png" type="image/x-icon">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <!-- Linkando o javascript -->
    <script src="script.js"></script>
</head>
<body>
    <div class="main">
        <fieldset class="fieldset">
            <legend id="legend"><p id="textLegend">Login</p></legend>
            <form action="" method="post" class="form"
            id="form-log">
                <div class="rm-group">
                    <label for="rm-login">Digite seu RM:</label>
                    <input type="text" name="rm-login" id="rm-login" placeholder="Ex.: 04032">
                </div>
                <div class="password-group">
                    <label for="pass-log">Digite sua senha:</label>
                    <input type="password" name="pass-log" id="pass-log"
                    placeholder="Senha"
                    >
                </div>
                <button class="btn" type="submit-log">Enviar</button>
                    
                
            </form>
            <button href="" class="btn"
                    onclick="showCad()" id="btn-cad">Cadastre-se</button>
            <form action="" method="post" class="form" id="form-cad">
                <div class="rm-group">
                    <label for="rm-cad">Digite seu RM:</label>
                <input type="text" name="rm-cad" id="rm-cad" placeholder="Ex.: 04032">
                </div>
                <div class="name-group">
                    <label for="name-cad">Digite seu nome:</label>
                <input type="text" name="name-cad" id="name-cad" placeholder="Ex.: Maria da Silva">
                </div>
                <div class="password-group">
                    <label for="senha-cad">Digite sua senha:</label>
                <input type="password" name="pass-cad" id="pass-cad"
                placeholder="Ex.: Wellington-123@">
                </div>
                <button class="btn" type="submit-cad">Enviar</button>
            </form>
            <button href="" class="btn"
                    onclick="showLog()" id="btn-log">Login</button>
            <img src="assets/logoTypeHive.png" alt="" width="200px">
        </fieldset>
    </div>
</body>
</html>