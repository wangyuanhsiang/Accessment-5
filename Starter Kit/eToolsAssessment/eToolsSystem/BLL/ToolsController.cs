using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

#region Additional Namespaces
using System.ComponentModel;
using eToolsSystem.Entities;
using eToolsSystem.Entities.DTOs;
using eToolsSystem.Entities.POCOs;
using eToolsSystem.DAL;
using System.Data.Entity.Validation;
#endregion

namespace eToolsSystem.BLL
{
    [DataObject]
    public class ToolsController
    {

        #region Assessment Query
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public List<CategoryDTO> CategoryStockList()
        {
            using (ToolsContext context = new ToolsContext())
            {
                #region Student Code here
                //insert query code


                var data = from cat in context.Categories
                           orderby cat.CategoryID
                           select new CategoryDTO()
                           {
                               CategoryDescription = cat.Description,
                               Stocks = from item in cat.StockItems
                                        select new CategoryStockItem()
                                        {
                                            Name = item.Description,
                                            OnHand = item.QuantityOnHand,
                                            Markup = item.SellingPrice - item.PurchasePrice
                                        }
                           };


                //replace the following line of code to return your results
                return data.ToList();
                #endregion
            }
        }
        #endregion

        #region Assessment Command

        [DataObjectMethod(DataObjectMethodType.Insert,false)]
        public void Categories_Add(Category item)
        {
            using (ToolsContext context = new ToolsContext())
            {
                #region Student Code here
                //insert add code
                var adding = context.Categories.Add(item); context.SaveChanges();
                //replace the following line of code to return your results
                // return 0;
                #endregion
            }
        }

        [DataObjectMethod(DataObjectMethodType.Update,false)]
        public void Categories_Update(Category item)
        {
            using (ToolsContext context = new ToolsContext())
            {
                #region Student Code here
                //insert udpate code
                var updating = context.Categories.Attach(item);
                var matchingWithExistingValues = context.Entry<Category>(updating);
                matchingWithExistingValues.State = System.Data.Entity.EntityState.Modified;
                context.SaveChanges();
                #endregion
            }
        }


        [DataObjectMethod(DataObjectMethodType.Delete, false)]
        public void Categories_Delete(Category removeItem)
        {
            using (ToolsContext context = new ToolsContext())
            {
                #region Student Code here
                //insert Delete code
                var existingvalue = context.Categories.Find(removeItem.CategoryID);
                context.Categories.Remove(existingvalue);
                context.SaveChanges();
                #endregion
            }
        }

        [DataObjectMethod(DataObjectMethodType.Select,false)]
        public List<Category> Categories_List()
        {
            using (ToolsContext context = new ToolsContext())
            {
                return context.Categories.ToList();
            }
        }

        [DataObjectMethod(DataObjectMethodType.Select,false)]
        public Category Categories_FindbyID(int categoryid)
        {
            using (ToolsContext context = new ToolsContext())
            {
                return context.Categories.Find(categoryid);
            }
        }

        #endregion
      
    }
}
