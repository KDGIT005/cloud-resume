document.addEventListener('DOMContentLoaded', () => {
    // In a real implementation, this would call an API to increment and fetch the visitor count
    // For demo purposes, we'll simulate this with localStorage
    updateVisitorCount();
});

function updateVisitorCount() {
    const visitorCountElement = document.getElementById('visitor-count');
    
    // In a real implementation, this would be an API call to a Lambda function
    // that updates and retrieves the visitor count from DynamoDB
    // For now, we'll simulate with localStorage
    
    let count = localStorage.getItem('visitorCount') || 0;
    count = parseInt(count) + 1;
    localStorage.setItem('visitorCount', count);
    
    visitorCountElement.textContent = count;
    
    // Comment: In the actual implementation, you would replace this with:
    // fetch('https://your-api-gateway-url/counter')
    //     .then(response => response.json())
    //     .then(data => {
    //         visitorCountElement.textContent = data.count;
    //     })
    //     .catch(error => {
    //         console.error('Error fetching visitor count:', error);
    //         visitorCountElement.textContent = 'Error loading count';
    //     });
} 