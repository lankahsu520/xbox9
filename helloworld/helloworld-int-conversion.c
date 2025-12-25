#include <stdio.h>
#include <stdlib.h> // exit
#include <sys/types.h>
#include <unistd.h>

#include "helloworld_dbg.h"
#include "helloworld_json.h"
#include <jansson.h>

#define TAG "helloworld_no-int-conversion"

int main(int argc, char *argv[])
{
	json_t *jroot = json_loads_easy("{}");

	if (jroot)
	{
		char *payload = json_dumps( jroot, JSON_COMPACT|JSON_ENSURE_ASCII|JSON_SORT_KEYS|JSON_PRESERVE_ORDER );
		if (payload)
		{
			DBG_WN_LN("(payload: %s)", payload);
			free(payload);
			payload = NULL;
		}
		json_decref(jroot);
		jroot = NULL;
	}

	return 0;
}
