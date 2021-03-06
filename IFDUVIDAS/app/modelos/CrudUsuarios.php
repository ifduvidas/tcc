<?php
/**
 * Created by PhpStorm.
 * User: aluno
 * Date: 27/04/18
 * Time: 13:23
 */

require_once "Usuario.php";
require_once "BDConection.php";

class CrudUsuarios
{
    public function __construct()
    {
        $this->conexao = BDConection::getConexao();
    }

    public function getUsuarios()
    {

        $sql = "select * from Usuarios order by Nome ";
        $resultado = $this->conexao->query($sql);
        $listaUsuarios = [];

        $usuarios = $resultado->fetchAll(PDO::FETCH_ASSOC);
        foreach ($usuarios as $usuario) {
            $objeto = new Usuario($usuario['Nome'], $usuario['senha'], $usuario['email'], $usuario['num_matricula'], $usuario['data_nasc'], $usuario['atributo'],
                $usuario['foto_perf'], $usuario['id_usuario'], $usuario['cod_tip']);

            $listaUsuarios[] = $objeto;
        }
        return $listaUsuarios;
    }

    public function insertUsuario($usuario, $arquivo_nome)
    {
        $Nome = $usuario->getNome();
        $senha = $usuario->getSenha();
        $email = $usuario->getEmail();
        $dataNasc = $usuario->getDataNasc();
        $atributo = $usuario->getAtributo();
        $cod_tip = $usuario->getCodTip();


        $consulta = "INSERT INTO usuarios (Nome, senha, email, data_nasc, atributo, cod_tip, foto_perf)  
                      VALUES ('{$Nome}', '{$senha}', '{$email}', '{$dataNasc}', '{$atributo}', '{$cod_tip}', '$arquivo_nome')";
        //echo $consulta;
        try {
            $res = $this->conexao->exec($consulta);
            //return $res;
        } catch (PDOException $erro) {
            return $erro->getMessage();
        }

    }



        public function getUsuario($id)
    {

        $sql = "SELECT * FROM usuarios where id_usuario = $id";
        $resultado = $this->conexao->query($sql);
        $usuario = $resultado->fetch(PDO::FETCH_ASSOC);

        return $usuario;
    }

    public function getUsuarioPergunta($id)
    {

        $sql = "SELECT * FROM usuarios as usuarios, perguntas as perguntas WHERE usuarios.id_usuario = perguntas.id_usuario and perguntas.id_pergunta = $id";
        $resultado = $this->conexao->query($sql);
        $usuario = $resultado->fetch(PDO::FETCH_ASSOC);

        return $usuario;
    }

    public function updateUsuario($usuario, $arquivo_nome, $id_usuario)
    {

        $consulta = "UPDATE usuarios SET Nome = '{$usuario->getNome()}', senha = '{$usuario->getSenha()}', email = '{$usuario->getEmail()}', data_nasc = '{$usuario->getDataNasc()}', atributo = '{$usuario->getAtributo()}', foto_perf = '{$arquivo_nome}', cod_tip = '{$usuario->getCodTip()}'
                    WHERE id_usuario=$id_usuario";

        echo $consulta;
        try {
            $res = $this->conexao->exec($consulta);
            //return $res;
        } catch (PDOException $erro) {
            return $erro->getMessage();
        }
    }

    public function deleteUsuario($id)
    {

        $consulta = "DELETE FROM usuarios WHERE id_usuario = {$id}";
        echo $consulta;
        try {
            $res = $this->conexao->exec($consulta);
            //return $res;
        } catch (PDOException $erro) {
            return $erro->getMessage();
        }
    }

    public function login($email, $senha)
    {
        $sql = "SELECT * FROM usuarios WHERE email = '$email' and senha='$senha' ";
        $resultado = $this->conexao->query($sql);
        if ($resultado->rowCount() > 0) {
            $usuario = $resultado->fetch(PDO::FETCH_ASSOC);
            return $usuario;
        } else {
            return false;
        }

    }

    public function getFotoUsuario($id)
    {
$sql = "SELECT foto_perf FROM usuarios as usuarios, perguntas as perguntas WHERE usuarios.id_usuario = perguntas.id_usuario and perguntas.id_pergunta = $id";
        $resultado = $this->conexao->query($sql);
        $exe = $resultado->fetch(PDO::FETCH_ASSOC);


       header("Content-Type: image/jpg");
       echo base64_encode(stripslashes((mysqli_result($exe, 0, 'foto'))));

    }

    

};






