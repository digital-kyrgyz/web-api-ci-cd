using Microsoft.AspNetCore.Mvc;

namespace WebApi.Controllers;

[Route("api/[controller]/[action]")]
[ApiController]
public class Test : Controller
{
    [HttpGet]
    public string GetName()
    {
        return "Kyrgyzstan";
    }
}