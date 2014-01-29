
#================================================================#
# For PHP
#================================================================#
proc = {var} {
  return "<?= \$$var ?>"
}

proc block {name} {
  tpl cpush block
  tpl cset name $name
  # tpl cappend {<? ob_start() ?>}
  return {<? ob_start() ?>}
}

proc /block {} {
  tpl cappend {<?= ob_get_clean() ?>}
  set name [tpl cget name]
  set text [tpl cpop block]
  if [info exists ::lut(block.$name)] {
    return $::lut(block.$name)
  } else {
    set ::lut(block.$name) $text
  }
}

proc extend  {tpl} {
  set ::lut(extend) $tpl
  return
}
