using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using EstimuloBackEnd.Models;

namespace EstimuloBackEnd.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ModuleDetailsController : ControllerBase
    {
        private readonly DatabaseContext _context;

        public ModuleDetailsController(DatabaseContext context)
        {
            _context = context;
        }

        // GET: api/ModuleDetails
        [HttpGet]
        public async Task<ActionResult<IEnumerable<ModuleDetails>>> GetModuloDetalhes()
        {
            return await _context.ModuloDetalhes.ToListAsync();
        }

        // GET: api/ModuleDetails/5
        [HttpGet("{id}")]
        public async Task<ActionResult<ModuleDetails>> GetModuleDetails(int id)
        {
            var moduleDetails = await _context.ModuloDetalhes.FindAsync(id);

            if (moduleDetails == null)
            {
                return NotFound();
            }

            return moduleDetails;
        }

        // PUT: api/ModuleDetails/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutModuleDetails(int id, ModuleDetails moduleDetails)
        {
            if (id != moduleDetails.Id)
            {
                return BadRequest();
            }

            _context.Entry(moduleDetails).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ModuleDetailsExists(id))
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

        // POST: api/ModuleDetails
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        public async Task<ActionResult<ModuleDetails>> PostModuleDetails(ModuleDetails moduleDetails)
        {
            _context.ModuloDetalhes.Add(moduleDetails);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetModuleDetails", new { id = moduleDetails.Id }, moduleDetails);
        }

        // DELETE: api/ModuleDetails/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<ModuleDetails>> DeleteModuleDetails(int id)
        {
            var moduleDetails = await _context.ModuloDetalhes.FindAsync(id);
            if (moduleDetails == null)
            {
                return NotFound();
            }

            _context.ModuloDetalhes.Remove(moduleDetails);
            await _context.SaveChangesAsync();

            return moduleDetails;
        }

        private bool ModuleDetailsExists(int id)
        {
            return _context.ModuloDetalhes.Any(e => e.Id == id);
        }
    }
}
