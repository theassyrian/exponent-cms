{*
 * Copyright (c) 2004-2011 OIC Group, Inc.
 * Written and Designed by Adam Kessler
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

<h2>{"Configure Portfolio"|gettext}</h2>
{control type="checkbox" name="only_featured" label="Only show featured pieces" value=1 checked=$config.only_featured}
{control type="radiogroup" name="usebody" label="Body Text"|gettext default=$config.usebody items="Full,Summary,None" values="2,1,0"}

