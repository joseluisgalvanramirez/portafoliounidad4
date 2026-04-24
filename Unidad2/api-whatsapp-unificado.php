<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>API WhatsApp - 5 Contactos</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        
        .container {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            max-width: 1200px;
            margin: 0 auto;
        }
        
        .box {
            margin: 15px;
            padding: 20px;
            background: white;
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0,0,0,0.2);
            width: 220px;
            transition: 0.3s;
        }
        
        .box:hover {
            transform: scale(1.05);
            box-shadow: 0px 6px 12px rgba(0,0,0,0.3);
        }
        
        .box a {
            text-decoration: none;
            display: inline-block;
        }
        
        img {
            width: 80px;
            height: auto;
            transition: 0.3s;
        }
        
        img:hover {
            opacity: 0.8;
        }
        
        h2 {
            color: #25D366;
            margin-bottom: 30px;
        }
        
        h3 {
            color: #333;
            margin-top: 0;
        }
        
        p {
            color: #666;
            font-size: 14px;
            margin: 10px 0 0;
        }
        
        .error-message {
            color: #ff0000;
            padding: 20px;
            background: #ffeeee;
            border-radius: 5px;
            margin: 20px;
        }
    </style>
</head>
<body>

<h2>API de WhatsApp - 5 Contactos</h2>

<div class="container">

<?php 
// Verificar si hay contactos para mostrar
if (empty($contactos)) {
    echo '<div class="error-message">No hay contactos disponibles</div>';
} else {
    foreach($contactos as $index => $contacto): 
        // Verificar que el contacto tenga los campos necesarios
        if (!isset($contacto['numero']) || !isset($contacto['mensaje'])) {
            continue; // Saltar este contacto si falta información
        }
        
        $numero = htmlspecialchars(trim($contacto['numero']));
        $mensaje = urlencode(trim($contacto['mensaje']));
        
        // Validar que el número no esté vacío
        if (empty($numero)) {
            continue;
        }
?>

<div class="box">
    <h3>Contacto <?php echo $index + 1; ?></h3>
    
    <a href="https://wa.me/<?php echo $numero; ?>?text=<?php echo $mensaje; ?>" 
       target="_blank" 
       rel="noopener noreferrer"
       title="Enviar mensaje por WhatsApp">
        <img src="img/whatsapp.png" alt="WhatsApp" onerror="this.src='https://via.placeholder.com/80?text=WA'">
    </a>
    
    <p>Haz clic para enviar mensaje</p>
    <small style="color: #999;"><?php echo substr($numero, 0, 10); ?>...</small>
</div>

<?php 
    endforeach; 
}
?>

</div>

</body>
</html>