#include <stdio.h>
#include <unistd.h>
int main(int ac, char **argv)
{
	int i = 0;
	if (ac != 2)
		return (0);
	while (argv[1][i])
	{
		argv[1][i] -= i;
		i++;
	}
	printf("Fla09 password : %s\n", argv[1]);
	return (1);
}
