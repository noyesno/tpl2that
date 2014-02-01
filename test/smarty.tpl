<? extend parent.tpl ?>

<? tpl2that::tpl setbrackets "\{" "\}" ?>

{block aside}
  some text {= var}
  some text {$var}

{foreach @items} inside foreach {/foreach}
{foreach @items $v} inside foreach {/foreach}
{foreach @items as $v} inside foreach {/foreach}

{foreach $items $idx=>$val}
  {$idx} = {$val}
{/foreach}

{/block}

<? tpl2that::tpl setbrackets "<?" "?>" ?>
