class App_excaption implements Exception
{
    String msg;

    App_excaption({required this.msg});

    String to_string()
    {
       return msg;
    }
}


//internet excaption class
class Internet_excaption extends App_excaption
{
    String error_msg;
     Internet_excaption({required this.error_msg}) : super(msg: error_msg);
}
