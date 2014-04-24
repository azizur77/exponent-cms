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

{css unique="product-edit" link="`$asset_path`css/product_edit.css" corecss="tree,panels"}

{/css}

<div id="editproduct" class="module store edit">

    {if $record->id != ""}
        <h1>{'Edit Information for'|gettext} {$record->product_name}</h1>
    {else}
        <h1>{'New'|gettext} {$record->product_name}</h1>
    {/if}

    {form action=update}
        {control type="hidden" name="id" value=$record->id}
        {control type="hidden" name="product_type" value=$record->product_type}
        
        <div id="editproduct-tabs" class="">
            <ul class="nav nav-tabs">
	            <li class="active"><a href="#tab1" data-toggle="tab"><em>{'General Info'|gettext}</em></a></li>
	            <li><a href="#tab2" data-toggle="tab"><em>{'Pricing'|gettext}</em></a></li>
	            <li><a href="#tab3" data-toggle="tab"><em>{'Files & Images'|gettext}</em></a></li>
	            <!--li><a href="#tab4" data-toggle="tab"><em>Quantity Info</em></a></li-->
	            <!--li><a href="#tab5" data-toggle="tab"><em>Shipping Info</em></a></li-->
	            <li><a href="#tab6" data-toggle="tab"><em>{'Categories'|gettext}</em></a></li>
            </ul>            
            <div class="tab-content">
	            <div id="tab1" class="tab-pane fade in active">
	                {control type="text" name="model" label="Model #"|gettext value=$record->model}
	                {control type="text" name="title" label="Donation Cause Title"|gettext value=$record->title}
	                {*{control type="textarea" name="summary" label="Donation Cause Summary"|gettext rows=3 cols=45 value=$record->summary}*}
	                {control type="editor" name="body" label="Donation Cause Description"|gettext height=250 value=$record->body}
	            </div>
	            <div id="tab2" class="tab-pane fade">
	                {control type="text" name="base_price" label="Minimum/Quick dollar amount"|gettext value=$record->base_price filter=money description='Amount of a \'Quick\' donation, or minimum amount for a standard donation'|gettext}
	            </div>
	            <div id="tab3" class="tab-pane fade">
	                {*{control type=files name=files subtype=images accept="image/*" value=$record->expFile}*}
                    {control type=files label="Main Images"|gettext name=mainimages subtype="mainimage" accept="image/*" value=$record->expFile limit=1 folder=$config.upload_folder}
	            </div>
	            <!--div id="tab4" class="tab-pane fade">
	                {control type="text" name="quantity" label="Quantity"|gettext value=$record->quantity}
	                {control type="text" name="minimum_order_quantity" label="Minimum order quantity"|gettext value=$record->minimum_order_quantity}
	                {control type="checkbox" checked=1 name="allow_partial" label="Allow partial quantities?"|gettext value=$record->allow_partial}
	                {control type="checkbox" name="is_available" label="Is this product available?"|gettext value=$record->is_available}
	                {control type="text" name="availability_note" label="Note to display when product is not available"|gettext value=$record->availability_note}
	                {control type="radiogroup" name="availability_type" label="Quantity Display"|gettext
	                    items="Unavailable if out of stock.,Available but shown as backordered if out of stock.,Always available even if out of stock.,Show as \'Call for Price\'."|gettxtlist
	                    values="0,1,2,3"
	                }
	            </div-->
	            <!--div id="tab5" class="tab-pane fade">
	                {control type="checkbox" name="no_shipping" label="This item doesn\'t require shipping"|gettext value=$record->no_shipping}
	                {control type="text" name="weight" label="Item Weight"|gettext value=$record->weight}
	            </div-->
	            <div id="tab6" class="tab-pane fade">
                    {icon class="manage" controller="storeCategory" action="manage" text="Manage Store Categories"|gettext}
	                {control type="tagtree" id="managecats" name="managecats" model="storeCategory" draggable=false checkable=true values=$record->storeCategory}
	            </div>
            </div>
        </div>
	    <div class="loadingdiv">{'Loading'|gettext}</div>
        {control type="buttongroup" submit="Save Product"|gettext cancel="Cancel"|gettext}
    {/form}
</div>

{*{script unique="authtabs" yui3mods=1}*}
{*{literal}*}
    {*EXPONENT.YUI3_CONFIG.modules.exptabs = {*}
        {*fullpath: EXPONENT.JS_RELATIVE+'exp-tabs.js',*}
        {*requires: ['history','tabview','event-custom']*}
    {*};*}

	{*YUI(EXPONENT.YUI3_CONFIG).use('exptabs', function(Y) {*}
        {*Y.expTabs({srcNode: '#editproduct-tabs'});*}
		{*Y.one('#editproduct-tabs').removeClass('hide');*}
		{*Y.one('.loadingdiv').remove();*}
    {*});*}
{*{/literal}*}
{*{/script}*}

{script unique="tabload" jquery=1 bootstrap="tab,transition"}
{literal}
    $('.loadingdiv').remove();
{/literal}
{/script}