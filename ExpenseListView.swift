import SwiftUI

struct Expense: Identifiable {
    let id = UUID()
    let name: String
    let amount: Double
    let date: Date
}

struct ExpenseListView: View {
    @State private var expenses = [
        Expense(name: "Groceries", amount: 50.0, date: Date()),
        Expense(name: "Electricity Bill", amount: 120.0, date: Date())
    ]
    
    var body: some View {
        List(expenses) { expense in
            VStack(alignment: .leading) {
                Text(expense.name)
                    .font(.headline)
                Text("$\(expense.amount, specifier: "%.2f")")
                    .font(.subheadline)
                Text(expense.date, style: .date)
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .padding(.vertical, 4)
        }
        .navigationTitle("Expenses")
    }
}

struct ExpenseListView_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseListView()
    }
}
