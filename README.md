tpl2that
========

Write templates with only one language, and convert it to other languages if necessary.

Example for PHP
---------------

File: parent.tpl

```
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
```

File: page.tpl
```
<? extend parent.tpl ?>

<? block aside ?>
  some text <? = var ?>
<? /block ?>
```

After Convert with: ``bin/tpl2that php test/page.tpl``

```
<!DOCTYPE html>
<head>
 <title>Demo</title>
</head>
<body>
<h1><?= $title ?></h1>

<? ob_start() ?>
  some text <?= $var ?>
<?= ob_get_clean() ?>

<hr/>

<? ob_start() ?>
  Main Content
<?= ob_get_clean() ?>

<? ob_start() ?>
<?= $script ?>
<?= ob_get_clean() ?>
</body>
</html>                 
```
