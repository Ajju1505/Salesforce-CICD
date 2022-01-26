trigger AccountTrigger on Account(before insert , before update)
{
    for(Account acc : trigger.new)
	{
        if(acc.Name.endsWith('text'))
		{
            System.System.debug('acc.Name--->' + acc.Name);
            acc.addError('Name contain Text');
            
        }
    }
}