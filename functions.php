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
  function messageRefreshInscricao($text){
    echo '<script>alert("'.$text.'")</script><meta http-equiv="refresh" content="0.1;url=../home/home.html"> </meta>';
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
        $_SESSION['rm'] = $row['rm'];
        $_SESSION['nm_usuario'] = $row['nm_usuario'];
        messageRefreshHome("Login efetuado com sucesso");
      } 
    } else{
      messageRefreshIndex("Erro ao fazer login");
    }

  }


  function formInscricaoEquipe($modalidade){
    $sql = 'SELECT * FROM equipe WHERE id_modalidade ='.$modalidade;
    $res = $GLOBALS['conn']->query($sql);

    if($res->num_rows > 0){
      while($row = $res->fetch_assoc()){
        echo '
                <option value="'.$row['id'].'">'.$row['nm_equipe'].'</option>
            ';
      } 
    } else{
    }
  }

  function inscricaoJogador($equipe, $jogador){
    $sql = 'INSERT INTO jogador_equipe VALUES ( "'.$jogador.'", '.$equipe.')';
    $res = $GLOBALS['conn']->query($sql);

    if($res){
      messageRefreshInscricao("Inscrição feita com sucesso, você será levado para home!!");
    } else{
      messageRefreshInscricao("Inscrição em futsal falhou, você ira para home!!");
    }
  }
?>