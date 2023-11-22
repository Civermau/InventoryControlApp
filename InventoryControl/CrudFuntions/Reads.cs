using AlmacenDataContext;
using AlmacenSQLiteEntities;
public static partial class CrudFunctions
{

    public static int SearchId(){
        try{
            Program.SectionTitle("Selecciona alguno se los anteriores");
            string? input;
            int Id;
            do{
                WriteLine("Ingresa el ID: ");
                input = ReadLine();
            } while (!int.TryParse(input, out Id));
            return Id;
        }
        catch(System.NullReferenceException){
            WriteLine("No existe el id indicado");
            return 0;
        }
    }

    /// <summary>
    /// Performs a general search for entities of a specified type and displays the results. GeneralSearch((Almacen db) => db.Docentes);
    /// </summary>
    /// <typeparam name="T">The entity type to search.</typeparam>
    /// <param name="queryFunction">A function that takes an Almacen context and returns an IQueryable for the specified entity type.</param>
    /// <remarks>
    /// This method prompts the user to enter a search term, performs a case-insensitive search,
    /// and displays the results using the <see cref="ReadData{T}(IQueryable{T}?, string[])"/> generic method.
    /// </remarks>
    public static void GeneralSearch<T>(Func<Almacen, IQueryable<T>> queryFunction) where T : class
    {
        using (Almacen db = new())
        {
            IQueryable<T> result;
            string? input = "";
            do
            {
                WriteLine($"Please enter the {typeof(T).Name.ToLower()} to search: ");
                input = ReadLine().ToUpper();
                result = queryFunction(db).Where(r => r.ToString()!.ToUpper().Contains(input));
                if (result is null || !result.Any())
                {
                    WriteLine($"No {typeof(T).Name.ToLower()} found with the entered name:");
                }
            } while (result is null || !result.Any());

            // Use the generic ReadData method to handle displaying the query results
            ReadData(result);
        }
    }

    /// <summary>
    /// Lists entities with optional highlighting based on specified entity IDs.
    /// </summary>
    /// <typeparam name="T">The type of entities to list.</typeparam>
    /// <param name="entities">The IQueryable collection of entities.</param>
    /// <param name="entityIdsHighlight">An array of entity IDs to be highlighted.</param>
    /// <remarks>
    /// This method displays a formatted table of entities with optional highlighting for specified IDs.
    /// The entity type must have an ID property following the convention: {EntityName}Id.
    /// </remarks>
    public static void ListEntitiesWithHighlight<T>(IQueryable<T>? entities, int[]? entityIdsHighlight = null) where T : class
    {
        using (Almacen db = new())
        {
            if (entities is null || (!entities.Any()))
            {
                Program.Fail($"No hay {typeof(T).Name.ToLower()}s registrados");
                return;
            }

            // Get the properties of the entity type
            var properties = typeof(T).GetProperties();

            // Display column headers
            WriteLine(string.Join(" | ", properties.Select(prop => $"{prop.Name,-18}")));

            foreach (var entity in entities!)
            {
                ConsoleColor backgroundColor = ForegroundColor;
                if ((entityIdsHighlight is not null) && entityIdsHighlight.Contains(GetEntityId(entity)))
                {
                    ForegroundColor = ConsoleColor.Green;
                }

                // Display entity properties
                WriteLine(string.Join(" | ", properties.Select(prop => $"{prop.GetValue(entity),-18}")));

                ForegroundColor = backgroundColor;
            }
            WriteLine();
        }
    }

    // Helper method to get the entity id dynamically
    private static int GetEntityId<T>(T entity) where T : class
    {
        var idProperty = typeof(T).GetProperty($"{typeof(T).Name}Id");
        return (int)idProperty!.GetValue(entity);
    }

    /// <summary>
    /// Reads and displays data from a generic IQueryable collection, dynamically showing object properties.
    /// </summary>
    /// <typeparam name="T">The type of the elements in the IQueryable collection.</typeparam>
    /// <param name="data">The IQueryable collection to be read and displayed.</param>
    public static void ReadData<T>(IQueryable<T>? data)
    {
        using (Almacen bd = new())
        {
            if (data is null || (!data.Any()))
            {
                WriteLine($"No {typeof(T).Name.ToLower()}s found");
            }
            else
            {
                var properties = typeof(T).GetProperties();
                string[] columnNames = properties.Select(prop => prop.Name).ToArray();

                foreach (var column in columnNames)
                {
                    Console.Write($"{column.ToString(), -30} | ");
                }
                Console.WriteLine();
                foreach (var item in data)
                {
                    foreach (var prop in properties)
                    {
                        Write($"{prop.GetValue(item),-30} | ");
                    }
                    WriteLine();
                }
            }
        }
    }
}
