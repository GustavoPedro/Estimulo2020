using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using EstimuloBackEnd.Models;
using EstimuloBackEnd.Services;
using EstimuloBackEnd.ViewModels;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace EstimuloBackEnd.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AuthController : ControllerBase
    {
        public DatabaseContext _context { get; set; }

        public AuthController(DatabaseContext context)
        {
            _context = context;
        }

        [HttpGet]
        public dynamic Get()
        {
            return new
            {
                a = "AAAAAAAA"
            };
        }

        [HttpPost]
        [AllowAnonymous]
        public async Task<dynamic> Login([FromBody] UserLoginViewModel model)
        {
            User usuario = await _context.Usuario.Where(usr => usr.Email == model.Email && usr.Senha == model.Senha).FirstOrDefaultAsync();
            if (usuario == null)
            {
                return NotFound(new { message = "Usuário ou senha inválidas" });
            }
            string token = TokenService.GenerateToken(usuario);
            usuario.Senha = "";
            return new
            {
                user = usuario,
                token = token
            };
        }
    }
}
