
#include "minishell.h"

void	update_tmp(t_envs *head, t_envs **tmp_old, t_envs **tmp_new)
{
	if (head->name && ft_strlen(head->name) == ft_strlen("OLDPWd")
		&& !ft_strncmp(head->name, "OLDPWD", ft_strlen("OLDPWD")))
		*tmp_old = head;
	else if (head->name && ft_strlen(head->name) == ft_strlen("PWD")
		&& !ft_strncmp(head->name, "PWD", ft_strlen("PWD")))
		*tmp_new = head;
}

int	help_cd(t_token *head, t_envs *envs)
{
	head = head->next;
	if (head->string[0] == '-')
	{
		if (head && ft_strlen(head->string) == ft_strlen("-")
			&& !ft_strncmp(head->string, "-", ft_strlen("-")))
			executing_last_cd(envs);
		else
		{
			ft_putstr_fd("Minishell: cd: ", 2);
			ft_putstr_fd(head->string, 2);
			ft_putstr_fd(": invalid option\n", 2);
			g_status = 256;
		}
	}
	else if (head->type >= 2)
		return (0);
	else
		executing_cd(envs, head->string);
	return (1);
}
