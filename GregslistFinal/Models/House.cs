

namespace server.Models;
public class House
{
    public int Id { get; set; }
    public string Model { get; set; }
    public int Year { get; set; }
    public int? Price { get; set; }
    public string Description { get; set; }
    public string ImgUrl { get; set; }

}