int my_putchar(char);

int my_putstr(char *str)
{
	int i;

	i = 0;
	while (str[i] != '\0')
	{
		my_putchar(str[i]);
		i += 1;
	}
	return i;
}