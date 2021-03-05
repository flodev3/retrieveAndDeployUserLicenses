public class ContaPiani{
    public static Integer ContaPiani(){
        StaticResource sr = [select id,body from StaticResource Where Name = 'istruzioni'];
        //correggere qua perchè assegna tutto il file a contents e invece deve splittarlo e assegnarlo a una list
        //fatto questo devo leggere la list e per ogni '(' assegno +1 e per ogni ')' assegno -1
        String contents = sr.body.toString();
        Integer count=0;
        Integer floor=0;
        Integer open=0;
        Integer close=0;
        List<String> parentesisList = contents.split('');
        system.debug('------size------' + parentesisList.size());
        for(Integer i =0; i<=parentesisList.size(); i++){
            if(!parentesisList.isEmpty())
            {
                if(floor==-1)
                {
                    system.debug('Here! Scende per la prima volta al carattere in posizione ' + parentesisList[i]);
                }
                system.debug('------liststring: '+ i + ') -'+ parentesisList[i]);
                if(parentesisList[i].contains('('))
                {
                    open++;
                }
                else if(parentesisList[i].contains(')'))
                {
                    close--;
                }
            }
            count++;
            if(count>=7000)
                break;
        }
        floor=open+close;
        system.debug('floor: ' + floor + ' - open: ' + open + ' - close: ' + close);
        return floor;
    }
    
    
}