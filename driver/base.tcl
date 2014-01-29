
proc block {} {
  tpl cpush block
}

proc /block {} {
  set text [tpl cpop block]
}

proc = {name} {
  return [set ::$name]
}
