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
        public static List<User> OphalenUserviaUsername(string username)
        {
            using (SmiteBuildEntities entities = new SmiteBuildEntities())
            {
                var query = entities.Users
                            .Where(x=>x.username==username);
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
        public static List<BuildItem> OphalenItemsViaBuildID(int buildId)
        {
            using (SmiteBuildEntities entities = new SmiteBuildEntities())
            {
                var query = entities.BuildItem
                 
                    .Include(x => x.Item)
                    
                    .Where(x => x.buildId == buildId);
                
                return query.ToList();
            }

        }
            public static List<Build> OphalenBuildsViaUserID(int userId)
        {
            using (SmiteBuildEntities entities = new SmiteBuildEntities())
            {
                var query = entities.Build
                    .Include(x=>x.User)
                    .Include(x=>x.God)
                    
                    .Where(x=>x.userId==userId);
                return query.ToList();
            }
        }
        public static List<GodStat> OphalenGodStatsViaGodId(int godId)
        {
            using (SmiteBuildEntities entities = new SmiteBuildEntities())
            {
                var query = entities.GodStat
                    .Include(x => x.Stat)
                    

                    .Where(x => x.godId == godId);
                return query.ToList();
            }
        }
   
        public static List<ItemStat> OphalenItemStatsViaItemId(int itemId)
        {
            using (SmiteBuildEntities entities = new SmiteBuildEntities())
            {
                var query = entities.ItemStat
                    .Include(x => x.Stat)
                    .Where(x => x.itemId == itemId);
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
            try
            {
                using (SmiteBuildEntities entities = new SmiteBuildEntities())
                {

                    entities.Build.Add(build);
                    return entities.SaveChanges();
                }
            }
            catch (Exception ex)
            {
                FileOperations.FoutLoggen(ex);

                return 0;
            }
                 
        }
        public static int ToevoegenBuildItem(BuildItem buildItem)
        {
            using (SmiteBuildEntities entities = new SmiteBuildEntities())
            {
                try
                {
                    entities.BuildItem.Add(buildItem);
                    return entities.SaveChanges();
                }
                catch (Exception ex)
                {
                    FileOperations.FoutLoggen(ex);
                    return 0;
                }

            }
        }
        public static int VerwijderenBuilds(Build build)
        {
            try
            {
                using (SmiteBuildEntities entities = new SmiteBuildEntities())
                {

                    entities.Entry(build).State = EntityState.Deleted;
                    return entities.SaveChanges();
                }
            }

            catch (Exception ex)
            {
                FileOperations.FoutLoggen(ex);

                return 0;
            }
            
        }
        public static int VerwijderenBuildItems(BuildItem buildItem)
        {
            try
            {
                using (SmiteBuildEntities entities = new SmiteBuildEntities())
                {

                    entities.Entry(buildItem).State = EntityState.Deleted;
                    return entities.SaveChanges();
                }
            }

            catch (Exception ex)
            {
                FileOperations.FoutLoggen(ex);

                return 0;
            }

        }
        public static int VerwijderenUsers(User user)
        {
            try
            {
                using (SmiteBuildEntities entities = new SmiteBuildEntities())
                {

                    entities.Entry(user).State = EntityState.Deleted;
                    return entities.SaveChanges();
                }
            }

            catch (Exception ex)
            {
                FileOperations.FoutLoggen(ex);

                return 0;
            }

        }
        public static int AanpassenBuild(Build build)
        {
            try
            {
                using (SmiteBuildEntities entities = new SmiteBuildEntities())
                {
                    entities.Entry(build).State = EntityState.Modified;
                    return entities.SaveChanges();
                }
            }
            catch (Exception ex)
            {
                FileOperations.FoutLoggen(ex);
                return 0;
            }
        }
    }
}
