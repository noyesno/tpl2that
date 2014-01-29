<!DOCTYPE html> 
<head>
 <title>Demo</title>
</head>
<body>
<h1><? = title ?></h1>

<? block aside ?> 
  A Side Content
<? /block ?> 

<hr/>

<? block main ?> 
  Main Content
<? /block ?> 

<? block script ?>
<?= script ?> 
<? /block ?>
</body>
</html>
