using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.Practices.EnterpriseLibrary.Data;
using Microsoft.Practices.EnterpriseLibrary.Common;
using System.Data;
using System.Data.SqlClient;

namespace MyBnb.Acceso_Datos
{
    public class AccesoDatos
    {
        private Database _SIADB;
        private SqlCommand cmd;

        public AccesoDatos()
        {
            _SIADB = DatabaseFactory.CreateDatabase("MyBnb");


        }

        public Object[][] leerDB(String pSPname)
        {
            cmd = new SqlCommand(pSPname);
            cmd.CommandType = CommandType.StoredProcedure;

            List<Object[]> listaRegistros = new List<Object[]>();
            IDataReader reader = _SIADB.ExecuteReader(cmd);
            while (reader.Read())
            {
                Object[] registro = new Object[reader.FieldCount];
                reader.GetValues(registro);
                listaRegistros.Add(registro);
            }
            reader.Close();
            Object[][] listaResultado = listaRegistros.ToArray();

            return listaResultado;
        }


        public Object[][] leerDB(String pSPname, String[] pnombreparametros, params String[] plistaParametros)
        {
            cmd = new SqlCommand(pSPname);
            cmd.CommandType = CommandType.StoredProcedure;

            List<Object[]> listaRegistros = new List<Object[]>();
            for (int i = 0; i < plistaParametros.Length; i++)
            {
                if (plistaParametros[i] == null)
                {
                    cmd.Parameters.Add(new SqlParameter(pnombreparametros[i], plistaParametros[i])).Value = DBNull.Value;

                }
                else
                {

                    cmd.Parameters.Add(new SqlParameter(pnombreparametros[i], plistaParametros[i]));

                }
            }

            IDataReader reader = _SIADB.ExecuteReader(cmd);
            while (reader.Read())
            {
                Object[] registro = new Object[reader.FieldCount];
                reader.GetValues(registro);
                listaRegistros.Add(registro);
            }
            reader.Close();
            Object[][] listaResultado = listaRegistros.ToArray();
            return listaResultado;
        }



        public void escribirDB(String pSPname, String[] pnombreparametros, params String[] plistaParametros)
        {
            {
                cmd = new SqlCommand(pSPname);
                cmd.CommandType = CommandType.StoredProcedure;

                for (int i = 0; i < plistaParametros.Length; i++)
                {
                    if (plistaParametros[i] == null)
                    {
                        cmd.Parameters.Add(new SqlParameter(pnombreparametros[i], plistaParametros[i])).Value = DBNull.Value;
                    }
                    else
                    {
                        cmd.Parameters.Add(new SqlParameter(pnombreparametros[i], plistaParametros[i]));
                    }
                }

                _SIADB.ExecuteReader(cmd);
            }
        }

        // Igual que el anterior pero devuelve un boolean para saber si la operación tuvo éxito o no
        public Boolean escribir(String pStoredProcedure, String[] pNombreParametros, params String[] pValorParametros)
        {
            cmd = new SqlCommand(pStoredProcedure);
            cmd.CommandType = CommandType.StoredProcedure;

            for (int i = 0; i < pValorParametros.Length; i++)
            {
                if (pValorParametros[i] == null)
                {
                    cmd.Parameters.Add(new SqlParameter(pNombreParametros[i], pValorParametros[i])).Value = DBNull.Value;
                }
                else
                {
                    cmd.Parameters.Add(new SqlParameter(pNombreParametros[i], pValorParametros[i]));
                }
            }

            IDataReader reader = _SIADB.ExecuteReader(cmd);
            Boolean resultado = reader.GetBoolean(0);

            return resultado;
        }

        // Retorna el IDataReader para que sea procesado por el DataAccess especifico
        public IDataReader leer(String pStoredProcedure, String[] pNombreParametros, params String[] pValorParametros)
        {
            cmd = new SqlCommand(pStoredProcedure);
            cmd.CommandType = CommandType.StoredProcedure;

            for (int i = 0; i < pValorParametros.Length; i++)
            {
                if (pValorParametros[i] == null)
                {
                    cmd.Parameters.Add(new SqlParameter(pNombreParametros[i], pValorParametros[i])).Value = DBNull.Value;
                }
                else
                {
                    cmd.Parameters.Add(new SqlParameter(pNombreParametros[i], pValorParametros[i]));
                }
            }

            IDataReader reader = _SIADB.ExecuteReader(cmd);
            return reader;
        }
    }
}