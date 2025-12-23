/***************************************************************************
 * Copyright (C) 2017 - 2020, Lanka Hsu, <lankahsu@gmail.com>, et al.
 *
 * This software is licensed as described in the file COPYING, which
 * you should have received as part of this distribution.
 *
 * You may opt to use, copy, modify, merge, publish, distribute and/or sell
 * copies of the Software, and permit persons to whom the Software is
 * furnished to do so, under the terms of the COPYING file.
 *
 * This software is distributed on an "AS IS" basis, WITHOUT WARRANTY OF ANY
 * KIND, either express or implied.
 *
 ***************************************************************************/
#include <string.h>

#include "helloworld_json.h"

json_t *json_loads_easy(char *payload)
{
	json_t *jroot = NULL;
	if ( (payload) && (strlen(payload)>0))
	{
		json_error_t jerror = {0};
		jroot = json_loads(payload, JSON_DISABLE_EOF_CHECK, &jerror); \
	}

	return jroot;
}

