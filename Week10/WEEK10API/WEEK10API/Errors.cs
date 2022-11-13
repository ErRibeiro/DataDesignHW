namespace WEEK10API
{
    public class Errors
    {
        string about;
        public Errors(string _about)
        {
            about = _about;
        }
        public string About()
        {
            return about + "\n";
        }
    }
}
