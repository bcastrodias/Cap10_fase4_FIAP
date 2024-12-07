import streamlit as st
import pandas as pd
from sklearn.ensemble import RandomForestClassifier
from sklearn.model_selection import train_test_split
from sklearn.metrics import classification_report, accuracy_score

# Carrega o dataset
dataset_path = "Processing\irrigation_dataset.csv"
df = pd.read_csv(dataset_path)

# Prepara os dados para treinamento
X = df[["temperature", "pressure", "altitude", "soilmoisture"]]
y = df["class"]

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Treina o modelo
rf_model = RandomForestClassifier(random_state=42)
rf_model.fit(X_train, y_train)

# Avalia o modelo
y_pred = rf_model.predict(X_test)
accuracy = accuracy_score(y_test, y_pred)
report = classification_report(y_test, y_pred)

# Streamlit App
st.title("Classificação de Umidade do Solo 🌱")

# Exibe métricas de avaliação do modelo
st.sidebar.subheader("Avaliação do Modelo")
st.sidebar.write(f"Acurácia do modelo: {accuracy:.2f}")
st.sidebar.text("Relatório de Classificação:")
st.sidebar.text(report)

# Formulário para entrada de dados
st.subheader("Insira os dados do solo para previsão:")
temperature = st.number_input("Temperatura (°C)", min_value=-50.0, max_value=50.0, value=25.0, step=0.1)
pressure = st.number_input("Pressão (hPa)", min_value=900.0, max_value=1100.0, value=1010.0, step=0.1)
altitude = st.number_input("Altitude (m)", min_value=0.0, max_value=1000.0, value=100.0, step=1.0)
soilmoisture = st.slider("Umidade do Solo (%)", min_value=0.0, max_value=1.0, value=0.5, step=0.01)

# Botão para realizar a previsão
if st.button("Classificar"):
    # Cria o dataframe com os novos dados
    new_data = pd.DataFrame({
        "temperature": [temperature],
        "pressure": [pressure],
        "altitude": [altitude],
        "soilmoisture": [soilmoisture],
    })
    
    # Realiza a previsão
    prediction = rf_model.predict(new_data)[0]
    
    # Exibe o resultado da classificação
    st.subheader("Resultado da Classificação:")
    st.write(f"A classe prevista é: **{prediction}**")
    
    # Lógica de rega
    if prediction == "Dry" or prediction == "Very Dry":  # Sendo Dry a classe prevista
        st.warning("⚠️ O solo deve ser regado!")
    else:
        st.success("✅ O solo está em condições adequadas. Não é necessário regar.")

# Exibe o dataset
st.subheader("Visualize o Dataset")
st.write(df)