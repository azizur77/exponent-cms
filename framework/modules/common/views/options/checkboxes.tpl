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

<div class="options checkboxes">
    <span class="{if bs3()||bs2()}control-label{else}label{/if}">{if $group->required == true}<span class="required" title="{'This entry is required'|gettext}">*&#160;</span>{/if}{$group->title}</span>
    {$gid=$group->id}
    {foreach from=$options item=option key=id}
        {if is_array($selected.$gid) && in_array($id, $selected.$gid)}  
            {control type="checkbox" name="options[`$group->id`][]" label=$option value=$id checked=true}
        {else}
            {control type="checkbox" name="options[`$group->id`][]" label=$option value=$id}
        {/if}
    {/foreach}
</div>