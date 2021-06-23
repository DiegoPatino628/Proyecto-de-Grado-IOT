<?php
require_once('conexion.php');

$device = $_GET['device_label'];
$contador = $_GET['contador'];
$hora= $_GET['hora'];
$minuto=$_GET['minuto'];
$dia=$_GET['dia'];
$mes=$_GET['mes'];

$conn = new conexion();

$query = "SELECT * FROM device_state WHERE idDevice = '$device'";
$select =  mysqli_query($conn->conectardb(),$query);

if($select->num_rows){
    $query = "UPDATE device_state SET contador = $contador, hora = $hora, minuto = $minuto, dia = $dia ,mes = $mes WHERE iddevice = '$device'";
    $update =  mysqli_query($conn->conectardb(),$query);
    
    $query = "INSERT INTO devicehistoric(idDevice, contador, hora, minuto, dia, mes, fechasubedatos) VALUES('$device','$contador','$hora','$minuto','$dia','$mes',NOW())";
    $insert =  mysqli_query($conn->conectardb(),$query);
    
    echo "****DATOS REGISTRADOS***<BR>";
    echo "{DEVICE:".$device.", CONT: ".$contador.",HOUR:".$hora.", MIN: ".$minuto.", DAY: ".$dia.",MONTH: ".$mes."}";
}
else{
    
    echo "****LA TARJETA NO SE ENCUENTRA REGITRADA***<BR>";  
}

?>