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

{if $shipping->pricelist|is_array == true}
    <div id="shipping-method-options">
        <img class="shippingmethodimg" src="{$shipping->calculator->icon}">
        <div class="sm-info">
            <strong class="selected-info">{$shipping->shippingmethod->option_title}&#160;
                <em>{$shipping->shippingmethod->shipping_cost|currency}</em></strong>
            {if $shipping->pricelist|@count >1 && (!$order->forced_shipping || empty($shipping->shippingmethod->option))}
                {group label="Available Options"|gettext}
                <div class="bd">
                    {form name="shpmthdopts" controller=shipping action=selectShippingOption}
                    {foreach from=$shipping->pricelist item=option}
                        {if $option.id == $shipping->shippingmethod->option || $option.title == $shipping->shippingmethod->option_title}{$selected=true}{else}{$selected=false}{/if}
                        {$oc=$option.cost|number_format:2}
                        {control type=radio name="option" columns=1 value=$option.id label="`$option.title` - `$oc|currency`" checked=$selected}
                    {/foreach}
                    <button type="submit" class="{button_style color=blue size=small}">{"Update Shipping Option"|gettext}</button>
                    {/form}
                </div>
                {/group}
            {/if}
        </div>
    </div>
    <hr>
{else}
    <div id="shipping-error" class="error">
        {$shipping->pricelist}
    </div>
{/if}
