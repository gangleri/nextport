/*
 * =============================================================================
 *
 *       Filename:  nexport.c
 *
 *    Description:  Get an avaliable port on a machine
 *
 *        Version:  1.0
 *        Created:  24/07/15
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Alan Bradley
 *
 * =============================================================================
 */
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>

int main(int argc, const char *argv[])
{
	int sckfd = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
	struct sockaddr_in addr;
	addr.sin_family = AF_INET;
	addr.sin_addr.s_addr = htonl(INADDR_ANY);
	addr.sin_port = htons(0);

	if (bind(sckfd, (struct sockaddr *)&addr, sizeof(addr)) < 0) {
		printf("-1\n");
		return 1;
	}

	int len = sizeof(addr);
	getsockname(sckfd, (struct sockaddr *)&addr, &len);

	printf("%d\n", ntohs(addr.sin_port));

	return 0;
}

