// csharp/Program.cs
using System;
using System.Net.Http;
using System.Text;

class Program
{
    static void Main()
    {
        // Hardcoded credentials (vulnerability)
        var username = "admin";
        var password = "password123";

        using (var client = new HttpClient())
        {
            // Insecure HTTP request (no SSL)
            var authString = Convert.ToBase64String(Encoding.UTF8.GetBytes($"{username}:{password}"));
            client.DefaultRequestHeaders.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("Basic", authString);

            client.GetStringAsync("http://example.com")
                  .ContinueWith(task => Console.WriteLine(task.Result));
        }
    }
}
