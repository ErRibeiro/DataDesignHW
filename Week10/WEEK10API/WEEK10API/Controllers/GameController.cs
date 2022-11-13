using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace WEEK10API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class GameController : ControllerBase
    {
        Commands com = new Commands();
        // GET: <GameController>
        [HttpGet("get-all")]
        public IEnumerable<MonsterData> Get()
        {
            com.PrepareSQLConnectionString();

            List<MonsterData> monsterData = com.GetAllFromTable();

            return monsterData;
        }

        // GET <GameController>/5
        [HttpGet("get-by-id/{id}")]
        public MonsterData Get(int id)
        {
            com.PrepareSQLConnectionString();

            MonsterData monsterData = com.GetById(id);

            return monsterData;
        }

        // POST <GameController>
        [HttpPost("insert-game")]
        public void Post([FromBody] MonsterData data)
        {
            com.PrepareSQLConnectionString();

           com.UpdateByID(data);
        }

        // DELETE <GameController>/5
        [HttpDelete("delete-by-id/{id}")]
        public void Delete(int id)
        {
            com.PrepareSQLConnectionString();

            com.DeleteById(id);
        }
    }
}
