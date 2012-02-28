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

{clear}
<div class="module motd show">
    {if !$config.hidemoduletitle}<h1>{$moduletitle|default:"Message of the Day"|gettext}</h1>{/if}
    {assign var=myloc value=serialize($__loc)}
    <div class="motd-message">
        <div class="motd-date">
            <span class="date-header">{$smarty.now|expdate:"D, M j, Y"}</span>
            {clear}
        </div>
        <div class="bodycopy">
            {$message->body}
        </div>
        {clear}
        <a class="link" href="{link action=showall}">{'View Previous Tips'|gettext}</a>
    
        {permissions}
			<div class="module-actions">
                {if $myloc != $message->location_data}{icon img='arrow_merge.png' title="Aggregated Content"|gettext}{/if}
				{if $permissions.edit == 1}
					{icon class=add action=create text="Add a tip"|gettext}
			  {/if}
			 </div>
        {/permissions}    
    </div>
</div>
