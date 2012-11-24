{*
 * Copyright (c) 2004-2012 OIC Group, Inc.
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

{css unique="showalluncategorized" corecss="tables"}

{/css}

<div class="module store showall-uncategorized">
    <h1>{'Uncategorized Products'|gettext}</h1>
    {permissions}
    <div class="module-actions">
        {if $permissions.create == true || $permissions.edit == true}
            {icon class="add" action=create text="Add a Product"|gettext}
        {/if}
        {if $permissions.manage == 1}
            {icon action=manage text="Manage Products"|gettext}
            {icon controller=storeCategory action=manage text="Manage Store Categories"|gettext}
        {/if}
    </div>
    {/permissions}
    {if $config.moduledescription != ""}
        {$config.moduledescription}
    {/if}
    {$myloc=serialize($__loc)}
    <div id="products">
		{pagelinks paginate=$page top=1}
        <table id="prods" class="exp-skin-table" style="width:95%">
            <thead>
                <tr>
                <th></th>
                {$page->header_columns}
                <th>{'Action'|gettext}</th>
                </tr>
            </thead>
            <tbody>
                {foreach from=$page->records item=listing name=listings}
                    {* FIXME We currently don't do categories for events & gift cards*}
                    {if $listing->product_type != 'eventregistration' && $listing->product_type != 'giftcard'}
                        <tr class="{cycle values="odd,even"}">
                            <td><a href={link controller=store action=showByTitle title=$listing->sef_url}>{img file_id=$listing->expFile.mainimage[0]->id square=true h=50}</a></td>
                            <td>{$listing->model|default:"N/A"}</td>
                            <td>{$listing->title}</td>
                            <td>${$listing->base_price|number_format:2}</td>
                            <td>
                                {permissions}
                                    <div class="item-actions">
                                        {if $permissions.edit == 1}
                                            {icon action=edit record=$listing title="Edit `$listing->title`"}
                                        {/if}
                                        {if $permissions.delete == 1}
                                            {icon action=delete record=$listing title="Delete `$listing->title`"}
                                        {/if}
                                    </div>
                                {/permissions}
                            </td>
                        </tr>
                    {/if}
                {/foreach}
            </tbody>
        </table>
		{pagelinks paginate=$page bottom=1}
    </div>
</div>
