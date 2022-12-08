using Microsoft.AspNetCore.Mvc;
// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace FinalAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PokemonController : ControllerBase
    {
        Services services = new Services();
        // GET: api/<PokemonController>
        [HttpGet("get-all")]
        public List<PokedexFormat> GetAll()
        {
            services.PrepareSQLConnectionString();

            List<PokedexFormat> pokedata = services.GetAll();

            return pokedata;
        }

        // GET api/<PokemonController>/5
        [HttpGet("get-stats-by-id/{id}")]
        public PokemonStatsFormat GetSts(int id)
        {
            services.PrepareSQLConnectionString();

            PokemonStatsFormat pokedata = services.GetStatsById(id);

            return pokedata;
        }

        // GET api/<PokemonController>/5
        [HttpGet("get-type-matchup-by-id/{id}")]
        public PokemonMatchUpsFormat GetMU(int id)
        {
            services.PrepareSQLConnectionString();

            PokemonMatchUpsFormat pokedata = services.GetMatchUpById(id);

            return pokedata;
        }

        // GET api/<PokemonController>/5
        [HttpGet("get-all-legendary")]
        public List<PokemonLegendaryFormat> GetLegendary()
        {
            services.PrepareSQLConnectionString();

            List<PokemonLegendaryFormat> pokedata = services.GetAllLegendaries();

            return pokedata;
        }
    }
}
