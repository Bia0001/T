namespace Sistema.Ifsp.DAL.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class alerandoclassefornecedor : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.Fornecedor", "saida", c => c.DateTime(precision: 0));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.Fornecedor", "saida", c => c.DateTime(nullable: false, precision: 0));
        }
    }
}
