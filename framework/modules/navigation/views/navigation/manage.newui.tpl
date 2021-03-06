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

<div id="navmanager" class="module navigation manager exp-skin">
	<div class="form_header">
		<div class="info-header">
			<div class="related-actions">
				{help text="Get Help with"|gettext|cat:" "|cat:("Managing Pages"|gettext) module="manage-all-pages"}
			</div>
			<h2>{'Manage Pages'|gettext}</h2>
		</div>
	</div>
	<div id="navmanager-tabs" class="">
	    <ul class="nav nav-tabs" role="tablist">
        	<li role="presentation" class="active"><a href="#tab1" role="tab" data-toggle="tab"><em>{'Menu Hierarchy'|gettext}</em></a></li>
	        {if $canManageStandalones}<li role="presentation"><a href="#tab2" role="tab" data-toggle="tab"><em>{'Standalone Pages'|gettext}</em></a></li>{/if}
	    </ul>
	    <div class="tab-content">
        	<div id="tab1" role="tabpanel" class="tab-pane fade in active">{include file="`$smarty.const.BASE`framework/modules/navigation/views/navigation/manage_hierarchy.newui.tpl"}</div>
	        {if $canManageStandalones}<div id="tab2" role="tabpanel" class="tab-pane fade">{include file="`$smarty.const.BASE`framework/modules/navigation/views/navigation/manage_standalone.tpl"}</div>{/if}
	    </div>
	</div>
	<div class="loadingdiv">{'Loading Pages'|gettext}</div>
</div>

{*{script unique="editform" yui3mods=1}*}
{*{literal}*}
    {*EXPONENT.YUI3_CONFIG.modules.exptabs = {*}
        {*fullpath: EXPONENT.JS_RELATIVE+'exp-tabs.js',*}
        {*requires: ['history','tabview','event-custom']*}
    {*};*}

	{*YUI(EXPONENT.YUI3_CONFIG).use('exptabs', function(Y) {*}
        {*Y.expTabs({srcNode: '#navmanager-tabs'});*}
	    {*Y.one('#navmanager-tabs').removeClass('hide');*}
	    {*Y.one('.loadingdiv').remove();*}
	{*});*}
{*{/literal}*}
{*{/script}*}

{script unique="tabload" jquery=1 bootstrap="tab,transition"}
{literal}
    $('.loadingdiv').remove();
{/literal}
{/script}