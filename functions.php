<?php
  session_start();
  $user = 'root';
  $pass = '';
  $banco = 'hive_proj';
  $server = 'localhost';
  $conn = new mysqli($server, $user, $pass, $banco);
  if(!$conn){
    echo "Erro de conexão ".$conn->error;
  }

  //funções para atualizar o site
  function messageRefreshIndex($text){
    echo '<script>alert("'.$text.'")</script><meta http-equiv="refresh" content="0.1;url=index.php"> </meta>';
  }
  function messageRefreshHome($text){
    echo '<script>alert("'.$text.'")</script><meta http-equiv="refresh" content="0.1;url=home/home.html"> </meta>';
  }

  //funções do site e do admin
  function cadastrar_usuario($rm, $senha, $nome){
    $sql = 'INSERT INTO cad VALUES("'.$rm.'", "'.$senha.'", "'.$nome.'", false, false)';
    $res = $GLOBALS['conn']->query($sql);

    if($res){
      messageRefreshIndex("Usuário cadastrado com sucesso!!");
    } else{
      messageRefreshIndex("Erro ao cadastrar usuário!!");
    }
  }
  function login_usuario($rm, $senha){
    $sql = 'SELECT * FROM cad WHERE rm = "'.$rm.'"';
    $res = $GLOBALS['conn']->query($sql);

    if($res->num_rows > 0){
      while($row = $res->fetch_assoc()){
        echo $row['rm'];
        echo $row['nm_usuario'];
        $rm_num = $row['rm'];
        // messageRefreshHome("Login efetuado com sucesso");
      } 
    } else{
      messageRefreshIndex("Erro ao fazer login");
    }
    echo $GLOBALS['rm']->rm;

  }

  function formInscricaoEquipe($modalidade, $rm, $nm){
    $sql = 'SELECT * FROM equipe WHERE id_modalidade ='.$modalidade;
    $res = $GLOBALS['conn']->query($sql);

    echo '
      <form action="" method="post" class="form">
          <!-- SELECT DAS EQUIPES -->
              <label for="select-equipe">Selecione sua equipe</label>
              <select name="select-equipe" id="select-equipe">
    ';
    if($res->num_rows > 0){
      while($row = $res->fetch_assoc()){
        echo '
                <option value="'.$row['id'].'">'.$row['nm_equipe'].'</option>
            ';
      } 
    } else{
    }

    
    echo '
        </select>
        <!-- FIM SELECT DAS EQUIPES -->
        <!-- RM USUARIO -->
            <label for="rm-usuario">Seu rm</label>
            <input type="text" id="rm-usuario" name="rm-usuario" disabled value="';
    echo
    echo    '">
        <!-- FIM RM USUARIO -->
        <!-- NOME USUARIO -->
            <label for="nome-usuario">Seu nome</label>
            <input type="text" id="nome-usuario" name="nome-usuario" disabled value="'.$nm.'">
        <!-- FIM NOME USUARIO -->
        <button type="submit" class="btn">Enviar</button>
    </form>
    ';
    
  }
?>