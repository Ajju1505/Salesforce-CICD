trigger AccountTrigger on Account(before insert , before update)
{
    for(Account acc : trigger.new)
	{
        if(acc.Name.endsWith('text'))
		{
            acc.addError('Name contain Text');
        }
    }
}