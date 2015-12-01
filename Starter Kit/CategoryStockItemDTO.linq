<Query Kind="Program">
  <Connection>
    <ID>9a250d5e-dbd0-445e-aecd-7b07607ce211</ID>
    <Persist>true</Persist>
    <Server>.</Server>
    <Database>eTools</Database>
  </Connection>
</Query>

void Main()
{
	var data = from cat in Categories orderby cat.CategoryID
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
	
	data.Dump();
}

// Define other methods and classes here
 public class CategoryDTO
 {
     public string CategoryDescription { get; set; }
     public IEnumerable Stocks { get; set; }
 }
 
 public class CategoryStockItem
 {
        public string Name { get; set; }
        public int OnHand { get; set; }
        public decimal Markup { get; set; } 
 }