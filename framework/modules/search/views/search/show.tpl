{*
 * Copyright (c) 2004-2014 OIC Group, Inc.
 *
 * This file is part of Exponent
 *
 * Exponent is free software; you can redistribute
 * it and/or modify it under the terms of the GNU
 * General Public License as published by the Free
 * Software Foundation; either version 2 of the
 * License, or (at your option) any later version.
 *
 * GPL: http://www.gnu.org/licenses/gpl.txt
 *
 *}
 
{css unique="searchform" link="`$asset_path`css/show-form.css"}
    
{/css}
 
<div class="module search show-form">
    {if $moduletitle && !($config.hidemoduletitle xor $smarty.const.INVERT_HIDE_TITLE)}<{$config.heading_level|default:'h1'}>{$moduletitle}</{$config.heading_level|default:'h1'}>{/if}
    {if $config.moduledescription != ""}
        {$config.moduledescription}
    {/if}
    {form action=search}
        {control type="search" name="search_string" id="search_string" placeholder=$config.inputtext|default:"Keywords"|gettext prepend="search"}
        {control type="buttongroup" submit=$config.buttontext|default:"Search"|gettext}
    {/form}
</div>
{*{script unique="search" yui3mods="yui"}*}
{*{literal}*}
{*YUI(EXPONENT.YUI3_CONFIG).use('node', function(Y) {*}
    {*Y.one('#search_string').on({*}
        {*'focus':function(e){*}
            {*e.target.set('value',(e.target.get('value')=='{/literal}{$config.default_txt|default:"Keywords"|gettext}{literal}')?'':e.target.get('value'));*}
        {*},*}
        {*'blur':function(e){*}
            {*e.target.set('value',(e.target.get('value')=='')?'{/literal}{$config.default_txt|default:"Keywords"|gettext}{literal}':e.target.get('value'));*}
        {*}*}
    {*});*}
{*});*}

{*{/literal}*}
{*{/script}*}
