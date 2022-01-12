using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;


namespace ProjectDM_DAL
{
    public class DatabaseOperations
    {
        public static List<User> OphalenUsers()
        {
            using (SmiteBuildEntities entities = new SmiteBuildEntities())
            {
                var query = entities.Users;
                return query.ToList();
            }
        }

        public static List<Item> OphalenItems()
        {
            using (SmiteBuildEntities entities = new SmiteBuildEntities())
            {
                var query = entities.Item;
                return query.ToList();
            }
        }
        public static List<God> OphalenGods()
        {
            using (SmiteBuildEntities entities = new SmiteBuildEntities())
            {
                var query = entities.God;
                return query.ToList();
            }
        }

        public static int ToevoegenUsers(User user)
        {
            using(SmiteBuildEntities entities = new SmiteBuildEntities())
            {
                try
                {
                    entities.Users.Add(user);
                    return entities.SaveChanges();
                }
                catch (Exception ex)
                {
                    FileOperations.FoutLoggen(ex);
                    return 0;
                }
             
            }
        }
        public static int ToevoegenBuilds(Build build)
        {
            
                using (SmiteBuildEntities entities = new SmiteBuildEntities())
                {
                    try
                    {
                        entities.Build.Add(build);
                        return entities.SaveChanges();
                    }

                    catch (Exception ex)
                    {
                        FileOperations.FoutLoggen(ex);

                        return 0;
                    }

                }

            
            
            
        }
    }
}
