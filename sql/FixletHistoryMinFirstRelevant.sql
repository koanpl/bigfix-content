/****** Not validated, just a first attempt. WARNING: could be slow  ******/
SELECT
      [BFEnterprise].[dbo].[BES_RELEVANT_FIXLET_HISTORY].[Sitename]
	  ,[BFEnterprise].[dbo].[BES_RELEVANT_FIXLET_HISTORY].[ID]
      ,MIN([BFEnterprise].[dbo].[BES_RELEVANT_FIXLET_HISTORY].[FirstBecameRelevant])
	  ,[BFEnterprise].[dbo].[BES_FIXLETS].[Name]
  FROM [BFEnterprise].[dbo].[BES_RELEVANT_FIXLET_HISTORY]
  INNER JOIN [BFEnterprise].[dbo].[BES_FIXLETS]
  ON [BFEnterprise].[dbo].[BES_FIXLETS].[Sitename]=[BFEnterprise].[dbo].[BES_RELEVANT_FIXLET_HISTORY].[Sitename] AND [BFEnterprise].[dbo].[BES_FIXLETS].[ID]=[BFEnterprise].[dbo].[BES_RELEVANT_FIXLET_HISTORY].[ID]
  GROUP BY [BFEnterprise].[dbo].[BES_RELEVANT_FIXLET_HISTORY].[Sitename],[BFEnterprise].[dbo].[BES_RELEVANT_FIXLET_HISTORY].[ID],[BFEnterprise].[dbo].[BES_FIXLETS].[Name];