<?php

$where = '';

if(!empty($_REQUEST['placa'])) {
    $where = "WHERE v.placa LIKE '%{$_REQUEST['placa']}%'";
}

$db = new Database();

if($db->connect()) {

    $dados = $db->sqlQueryArray(

       "SELECT veiculo.placa,veiculo.nome,rastreamento.data_ocorrencia, rastreamento.velocidade, veiculo.vel_maxima, rastreamento.diferenca,rastreamento.latitude, rastreamento.longitude from veiculo INNER JOIN rastreamento on veiculo.vel_maxima != rastreamento.diferenca"
    );

    echo json_encode(array(
        'status' => 'success',
        'data' => $dados
    ));

} else {
    echo json_encode(array(
        'status' => 'failure',
        'message' => 'Erro ao conectar ao banco'
    ));
}