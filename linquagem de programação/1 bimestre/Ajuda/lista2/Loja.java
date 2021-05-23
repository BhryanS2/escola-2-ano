import java.util.*;
import java.util.Map.Entry;

public class Loja {
	public Double Gasto = 0.0, Lucro = 0.0, res = 0.0, calcProduto = 0.0;

	public ArrayList<String> funcionarios = new ArrayList<String>(), vendasNome = new ArrayList<String>(),
			pagamentosNome = new ArrayList<String>(), produtosNome = new ArrayList<String>();

	public ArrayList<Double> vendasValor = new ArrayList<Double>(), pagamentosValor = new ArrayList<Double>(),
			produtosValor = new ArrayList<Double>();

	// set item

	public void setFuncionarios(String Nome) {
		funcionarios.add(Nome);
	}

	public void setPagamentos(Double valor, String nome) {
		pagamentosNome.add(nome);
		pagamentosValor.add(valor);
	}

	public void setProdutos(Double valor, String nome) {
		produtosNome.add(nome);
		produtosValor.add(valor);
	}

	public void setVendas(Double valor, String nome) {
		vendasNome.add(nome);
		vendasValor.add(valor);
	}

	// get item

	public ArrayList<String> getFuncionarios() {
		return funcionarios;
	}

	public Map<String, Double> getPagamentos() {
		Map<String, Double> res = new HashMap<String, Double>();
		Double valor = 0.0;
		for (int i = 0; i < pagamentosNome.size(); i++) {
			if(res.get(pagamentosNome.get(i)) != null) {
				valor = res.get(pagamentosNome.get(i));
				valor += pagamentosValor.get(i);
				res.put(pagamentosNome.get(i), valor);
			} else res.put(pagamentosNome.get(i), pagamentosValor.get(i));
		}
		
		return res;
	}

	public Map<String, Double> getProdutos() {
		Map<String, Double> res = new HashMap<String, Double>();
		Double valor = 0.0;
		for (int i = 0; i < produtosNome.size(); i++) {
			if(res.get(produtosNome.get(i)) != null) {
				valor = res.get(produtosNome.get(i));
				valor += produtosValor.get(i);
				res.put(produtosNome.get(i), valor);
			} else res.put(produtosNome.get(i), produtosValor.get(i));
		}

		return res;
	}

	public Map<String, Double> getVendas() {
		Map<String, Double> res = new HashMap<String, Double>();
		Double venda = 0.0;
		for (int i = 0; i < vendasNome.size(); i++) {
			if(res.get(vendasNome.get(i)) != null) {
				venda = res.get(vendasNome.get(i));
				venda += vendasValor.get(i);
				res.put(vendasNome.get(i), venda);
			} else res.put(vendasNome.get(i), vendasValor.get(i));
		}
		return res;
	}

	// show item

	public void Show(String txt) {
		System.out.println(txt);
	}

	public void PrintArr(Map<String, Double> array) {
		Set< Entry<String, Double> > set = array.entrySet();
		Iterator it = set.iterator();
		while(it.hasNext()){
			Entry<String, Double> entry = (Entry)it.next();
			System.out.printf("Nome = %s\tValor = %.2f\n", entry.getKey(), entry.getValue());
		}
	}

	// calcs

	public void printTotalProdutos() {
		Set<Entry<String, Double>> set = getProdutos().entrySet();
		Iterator it = set.iterator();
		while(it.hasNext()){
			Entry<String, Double> entry = (Entry)it.next();
			System.out.printf("Nome = %s\tValor = %.2f\n", entry.getKey(), entry.getValue());
			calcProduto += entry.getValue();
		}
		System.out.printf("Valor Total em produto = %.2f\n", calcProduto);
	}

	public void TotalDeLucro(Map<String, Double> array) {
		Set<Entry<String, Double>> set = getVendas().entrySet();
		Iterator it = set.iterator();
		while(it.hasNext()){
			Entry<String, Double> entry = (Entry)it.next();
			Lucro += entry.getValue();
		}
		System.out.printf("Lucro = %.2f\t", Lucro);
	}

	public void TotalDeGasto(Map<String, Double> array) {
		Set<Entry<String, Double>> set = getPagamentos().entrySet();
		Iterator it = set.iterator();
		while(it.hasNext()){
			Entry<String, Double> entry = (Entry)it.next();
			Gasto += entry.getValue();
		}
		System.out.printf("Gasto = %.2f\n", Gasto);
	}

	public void LucroFinal() {
		res = 0.0;
		res = Lucro - Gasto;
		System.out.printf("%.2f\n", res);
	}
	
	public static void main(String[] args) {
		Loja loja1 = new Loja();
		Loja loja2 = new Loja();

		Integer qtd;
		String nome;
		Double valor, ValorFinal;
		String res;

		Scanner input = new Scanner(System.in);

		// Loja 1
		loja1.Show("Quantos funcionarios tem ?");
		qtd = input.nextInt();
		for (int i = 0; i < qtd; i++) {
			loja1.Show("Qual nome do funcionarios " + (i + 1));
			nome = input.next();
			loja1.setFuncionarios(nome);
		}

		loja1.Show("Quantos produtos tem ?");
		qtd = input.nextInt();
		for (int i = 0; i < qtd; i++) {
			loja1.Show("nome do produto: ");
			nome = input.next();

			loja1.Show("valor do produto: ");
			valor = input.nextDouble();
			ValorFinal = valor;

			loja1.Show("Quantas Unidades: ");
			valor = input.nextDouble();
			ValorFinal *= valor;

			loja1.setProdutos(ValorFinal, nome);
		}

		loja1.Show("Quantos pagamentos fez ?");
		qtd = input.nextInt();
		for (int i = 0; i < qtd; i++) {
			loja1.Show("Quem recebu o pagamento: ");
			nome = input.next();
			loja1.Show("Quanto foi o pagamento: ");
			valor = input.nextDouble();
			loja1.setPagamentos(valor, nome);
		}

		loja1.Show("Quantas vendas fez ?");
		qtd = input.nextInt();
		for (int i = 0; i < qtd; i++) {
			loja1.Show("nome de quem vendeu: ");
			nome = input.next();

			loja1.Show("valor da venda: ");
			valor = input.nextDouble();
			ValorFinal = valor;

			loja1.Show("Quantas Unidades: ");
			valor = input.nextDouble();
			ValorFinal *= valor;

			loja1.setVendas(ValorFinal, nome);
		}
		
		System.out.print("\033[H\033[2J");

		loja1.Show("Quer ver quem foi pago ? ");
		res = input.next();
		res = res.toLowerCase();

		if (res.equals("sim"))
			loja1.PrintArr(loja1.getPagamentos());

		loja1.Show("Quer ver quem vendeu ? ");
		res = input.next();
		res = res.toLowerCase();

		if (res.equals("sim")){
			loja1.PrintArr(loja1.getVendas());
		}
			
		loja1.TotalDeLucro(loja1.getVendas());
		loja1.TotalDeGasto(loja1.getPagamentos());

		loja1.Show("\nLucro Final");
		loja1.LucroFinal();

		loja1.Show("Total de Produtos na loja");

		loja1.printTotalProdutos();

		// Loja 2
		loja2.Show("Quantos funcionarios tem ?");
		qtd = input.nextInt();
		for (int i = 0; i < qtd; i++) {
			loja2.Show("Qual nome do funcionarios " + (i + 1));
			nome = input.next();
			loja2.setFuncionarios(nome);
		}

		loja2.Show("Quantos produtos tem ?");
		qtd = input.nextInt();
		for (int i = 0; i < qtd; i++) {
			loja2.Show("nome do produto: ");
			nome = input.next();

			loja2.Show("valor do produto: ");
			valor = input.nextDouble();
			ValorFinal = valor;

			loja2.Show("Quantas Unidades: ");
			valor = input.nextDouble();
			ValorFinal *= valor;

			loja2.setProdutos(ValorFinal, nome);
		}

		loja2.Show("Quantos pagamentos fez ?");
		qtd = input.nextInt();
		for (int i = 0; i < qtd; i++) {
			loja2.Show("Quem recebu o pagamento: ");
			nome = input.next();
			loja2.Show("Quanto foi o pagamento: ");
			valor = input.nextDouble();
			loja2.setPagamentos(valor, nome);
		}

		loja2.Show("Quantas vendas fez ?");
		qtd = input.nextInt();
		for (int i = 0; i < qtd; i++) {
			loja2.Show("nome de quem vendeu: ");
			nome = input.next();

			loja2.Show("valor da venda: ");
			valor = input.nextDouble();
			ValorFinal = valor;

			loja2.Show("Quantas Unidades: ");
			valor = input.nextDouble();
			ValorFinal *= valor;

			loja2.setVendas(ValorFinal, nome);
		}
		
		System.out.print("\033[H\033[2J");

		loja2.Show("Quer ver quem foi pago ? ");
		res = input.next();
		res = res.toLowerCase();

		if (res.equals("sim"))
			loja2.PrintArr(loja2.getPagamentos());

		loja2.Show("Quer ver quem vendeu ? ");
		res = input.next();
		res = res.toLowerCase();

		if (res.equals("sim"))
			loja2.PrintArr(loja2.getVendas());
			
		loja2.TotalDeLucro(loja2.getVendas());
		loja2.TotalDeGasto(loja2.getPagamentos());

		loja2.Show("\nLucro Final");
		loja2.LucroFinal();

		loja2.Show("Total de Produtos na loja");

		loja2.printTotalProdutos();
		
		input.close();
	}

}
