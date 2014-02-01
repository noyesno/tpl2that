
#================================================================#
# For PHP
#================================================================#
proc = {var} {
  return "<?= \$$var ?>"
}

proc block {name} {
  tpl2that::tpl cpush block
  tpl2that::tpl cset name $name
  tpl2that::tpl cappend {<? ob_start() ?>}
  return "" ;#{<? ob_start() ?>}
}

proc /block {} {
  tpl2that::tpl cappend {<?= ob_get_clean() ?>}
  set name [tpl2that::tpl cget name]
  set text [tpl2that::tpl cpop block]
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


proc foreach {var args} {
  set argc [llength $args]
  switch $argc {
    0 { 
      return "<? foreach(\$[string trimleft $var {$@%}] as \$k) \{ ?>"
    }
    1 - 2 { 
    return "<? foreach(\$[string trimleft $var {$@%}] as [lindex $args end]) \{ ?>"
    }
    default {
      TODO
    }
  }
}

proc /foreach {args} {
  return "<? \} ?>"
}

