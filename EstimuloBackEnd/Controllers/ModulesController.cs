using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using EstimuloBackEnd.Models;

namespace EstimuloBackEnd.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ModulesController : ControllerBase
    {
        private readonly DatabaseContext _context;

        public ModulesController(DatabaseContext context)
        {
            _context = context;
        }

        // GET: api/Modules
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Module>>> GetModulo()
        {
            return await _context.Modulo.ToListAsync();
        }

        // GET: api/Modules/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Module>> GetModule(int id)
        {
            var modulo = await _context.Modulo.FindAsync(id);

            if (modulo == null)
            {
                return NotFound();
            }

            return modulo;
        }

        // PUT: api/Modules/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutModule(int id, Module modulo)
        {
            if (id != modulo.Id)
            {
                return BadRequest();
            }

            _context.Entry(modulo).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ModuleExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/Modules
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        public async Task<ActionResult<Module>> PostModule(Module modulo)
        {
            _context.Modulo.Add(modulo);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetModule", new { id = modulo.Id }, modulo);
        }

        // DELETE: api/Modules/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<Module>> DeleteModule(int id)
        {
            var modulo = await _context.Modulo.FindAsync(id);
            if (modulo == null)
            {
                return NotFound();
            }

            _context.Modulo.Remove(modulo);
            await _context.SaveChangesAsync();

            return modulo;
        }

        private bool ModuleExists(int id)
        {
            return _context.Modulo.Any(e => e.Id == id);
        }
    }
}
