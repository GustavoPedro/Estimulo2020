using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using EstimuloBackEnd.Models;
using EstimuloBackEnd.Services;
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

        [HttpPost]
        [AllowAnonymous]
        [Route("login")]
        public async Task<dynamic> Login([FromBody] User model)
        {
            User usuario = await _context.Usuarios.Where(usr => usr.Email == model.Email && usr.Senha == model.Senha).FirstOrDefaultAsync();
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
