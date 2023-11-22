using AlmacenDataContext;
using AlmacenSQLiteEntities;
using System;
using static System.Console;

internal partial class Program
{
    static void Main()
    {
        //StudentOrders();
        
        Console.Clear();
        Almacen db = new();
        //CrudFunctions.CalcularAdeudo();
        WriteLine($"Provider: {db.Database.ProviderName}");
        UI.Manage();
    }
}