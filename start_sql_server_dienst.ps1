# Als lokaler Administrator ausführen

# Für Standardinstanz
Start-Service -Name 'MSSQLSERVER'

# Für benannte Instanz, z.B. 'SQL2022'
# Start-Service -Name 'MSSQL$SQL2022'
